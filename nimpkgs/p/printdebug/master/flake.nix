{
  description = ''Print Debug for Nim, tiny 3 lines Lib, C Target'';
  inputs.src-printdebug-master.flake = false;
  inputs.src-printdebug-master.type = "github";
  inputs.src-printdebug-master.owner = "juancarlospaco";
  inputs.src-printdebug-master.repo = "nim-printdebug";
  inputs.src-printdebug-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-printdebug-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-printdebug-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-printdebug-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}