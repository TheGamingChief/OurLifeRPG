switch (_this select 0) do {
  case ("IN_CALL"): {
    systemChat "[Phone] The person you are trying to call is currently in a call."
  };
  case ("RECIVING_CALL"): {
    systemChat "[Phone] The person you are trying to call is currently reciving a call."
  };
};

OL_InCall = false;
