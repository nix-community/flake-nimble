{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_2_6.flake = false;
  inputs.src-nwsync-0_2_6.type = "github";
  inputs.src-nwsync-0_2_6.owner = "Beamdog";
  inputs.src-nwsync-0_2_6.repo = "nwsync";
  inputs.src-nwsync-0_2_6.ref = "refs/tags/0.2.6";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  outputs = { self, nixpkgs, src-nwsync-0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}