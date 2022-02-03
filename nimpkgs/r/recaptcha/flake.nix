{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
  inputs."recaptcha-master".url = "path:./master";
  inputs."recaptcha-v1_0_0".url = "path:./v1_0_0";
  inputs."recaptcha-v1_0_1".url = "path:./v1_0_1";
  inputs."recaptcha-v1_0_2".url = "path:./v1_0_2";
  inputs."recaptcha-v1_0_3".url = "path:./v1_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}