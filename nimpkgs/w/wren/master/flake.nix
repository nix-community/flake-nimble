{
  description = ''A nim wrapper for Wren, an embedded scripting language'';
  inputs.src-wren-master.flake = false;
  inputs.src-wren-master.type = "github";
  inputs.src-wren-master.owner = "geotre";
  inputs.src-wren-master.repo = "wren";
  inputs.src-wren-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-wren-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wren-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wren-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}