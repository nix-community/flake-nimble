{
  description = ''wave is a tiny WAV sound module'';
  inputs.src-wave-master.flake = false;
  inputs.src-wave-master.type = "github";
  inputs.src-wave-master.owner = "jiro4989";
  inputs.src-wave-master.repo = "wave";
  inputs.src-wave-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-wave-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wave-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wave-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}