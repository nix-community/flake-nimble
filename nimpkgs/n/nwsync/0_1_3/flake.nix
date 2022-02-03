{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_1_3.flake = false;
  inputs.src-nwsync-0_1_3.type = "github";
  inputs.src-nwsync-0_1_3.owner = "Beamdog";
  inputs.src-nwsync-0_1_3.repo = "nwsync";
  inputs.src-nwsync-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-nwsync-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}