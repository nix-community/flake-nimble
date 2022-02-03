{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
  inputs.src-easy_bcrypt-2_0_1.flake = false;
  inputs.src-easy_bcrypt-2_0_1.type = "github";
  inputs.src-easy_bcrypt-2_0_1.owner = "Akito13";
  inputs.src-easy_bcrypt-2_0_1.repo = "easy-bcrypt";
  inputs.src-easy_bcrypt-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, src-easy_bcrypt-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_bcrypt-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easy_bcrypt-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}