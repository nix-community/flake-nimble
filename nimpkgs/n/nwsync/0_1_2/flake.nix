{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_1_2.flake = false;
  inputs.src-nwsync-0_1_2.type = "github";
  inputs.src-nwsync-0_1_2.owner = "Beamdog";
  inputs.src-nwsync-0_1_2.repo = "nwsync";
  inputs.src-nwsync-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-nwsync-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}