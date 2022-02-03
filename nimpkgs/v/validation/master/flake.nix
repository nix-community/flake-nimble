{
  description = ''Nim object validation using type field pragmas'';
  inputs.src-validation-master.flake = false;
  inputs.src-validation-master.type = "github";
  inputs.src-validation-master.owner = "captainbland";
  inputs.src-validation-master.repo = "nim-validation";
  inputs.src-validation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-validation-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-validation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}