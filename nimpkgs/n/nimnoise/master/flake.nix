{
  description = ''A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise'';
  inputs.src-nimnoise-master.flake = false;
  inputs.src-nimnoise-master.type = "github";
  inputs.src-nimnoise-master.owner = "blakeanedved";
  inputs.src-nimnoise-master.repo = "nimnoise";
  inputs.src-nimnoise-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimnoise-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnoise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimnoise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}