{
  description = ''A library for making MIDI music'';
  inputs.src-paramidi-master.flake = false;
  inputs.src-paramidi-master.type = "github";
  inputs.src-paramidi-master.owner = "paranim";
  inputs.src-paramidi-master.repo = "paramidi";
  inputs.src-paramidi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-paramidi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paramidi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}