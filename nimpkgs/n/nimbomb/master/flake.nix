{
  description = ''A GiantBomb-wiki wrapper for nim'';
  inputs.src-nimbomb-master.flake = false;
  inputs.src-nimbomb-master.type = "github";
  inputs.src-nimbomb-master.owner = "Tyler-Yocolano";
  inputs.src-nimbomb-master.repo = "nimbomb";
  inputs.src-nimbomb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbomb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbomb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbomb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}