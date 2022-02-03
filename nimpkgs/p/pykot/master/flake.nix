{
  description = ''Porting some Python / Kotlin features to Nim'';
  inputs.src-pykot-master.flake = false;
  inputs.src-pykot-master.type = "github";
  inputs.src-pykot-master.owner = "jabbalaci";
  inputs.src-pykot-master.repo = "nimpykot";
  inputs.src-pykot-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pykot-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pykot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pykot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}