{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_1_0.flake = false;
  inputs.src-nwsync-0_1_0.type = "github";
  inputs.src-nwsync-0_1_0.owner = "Beamdog";
  inputs.src-nwsync-0_1_0.repo = "nwsync";
  inputs.src-nwsync-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-nwsync-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}