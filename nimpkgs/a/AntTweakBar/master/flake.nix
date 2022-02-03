{
  description = ''nim wrapper around the AntTweakBar c library'';
  inputs.src-AntTweakBar-master.flake = false;
  inputs.src-AntTweakBar-master.type = "github";
  inputs.src-AntTweakBar-master.owner = "krux02";
  inputs.src-AntTweakBar-master.repo = "nimAntTweakBar";
  inputs.src-AntTweakBar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-AntTweakBar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AntTweakBar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-AntTweakBar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}