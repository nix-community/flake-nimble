{
  description = ''API for Web Audio (JS)'';
  inputs.src-webaudio-master.flake = false;
  inputs.src-webaudio-master.type = "github";
  inputs.src-webaudio-master.owner = "ftsf";
  inputs.src-webaudio-master.repo = "nim-webaudio";
  inputs.src-webaudio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webaudio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webaudio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webaudio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}