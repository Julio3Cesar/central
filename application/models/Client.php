<?php

class Client extends ActiveRecord\Model {

	var $password = FALSE;
        public function toArray()
        {
          if($this->is_active == 1){$is_active = "Sim";} else {$is_active = "Não";}
          return array($this->id, $this->firstname.' '.$this->lastname, $this->functional_id, $this->authenticity_code, $this->station, $this->birth_date, $this->company->vat, $this->rg, $this->email, $this->phone, $this->mobile, $this->address.', '.$this->address_number.', '.$this->complement.' - '.$this->district.'  '.$this->company->province.' - '.$this->city.', '.$this->zipcode, $is_active, $this->command, $this->command_address.' '.$this->command_state.' - '.$this->command_city, $this->command_opm, $this->command_phone, $this->command_board, $this->command_entry_date, $this->command_comments);
        }

	function before_save()
	{
		if($this->password)
			$this->hashed_password = $this->hash_password($this->password);
	}

	function set_password($plaintext)
	{

		$this->hashed_password = $this->hash_password($plaintext);
	}
	private function hash_password($password)
	{
		$salt = bin2hex(mcrypt_create_iv(32, MCRYPT_DEV_URANDOM));
		$hash = hash('sha256', $salt . $password);

		return $salt . $hash;
	}

	function validate_password($password)
	{
		$salt = substr($this->hashed_password, 0, 64);
		$hash = substr($this->hashed_password, 64, 64);

		$password_hash = hash('sha256', $salt . $password);

		return $password_hash == $hash;
	}



	static $has_many = array(
    array('projects'),
    array('invoices')
    );

    static $belongs_to = array(
    array('company')
    );
}
