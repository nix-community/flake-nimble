{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_1_1.flake = false;
  inputs.src-nwsync-0_1_1.type = "github";
  inputs.src-nwsync-0_1_1.owner = "Beamdog";
  inputs.src-nwsync-0_1_1.repo = "nwsync";
  inputs.src-nwsync-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-nwsync-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}