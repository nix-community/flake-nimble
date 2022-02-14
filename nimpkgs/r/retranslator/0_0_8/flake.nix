{
  description = ''Transformer'';
  inputs.src-retranslator-0_0_8.flake = false;
  inputs.src-retranslator-0_0_8.type = "github";
  inputs.src-retranslator-0_0_8.owner = "linksplatform";
  inputs.src-retranslator-0_0_8.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_0_8.ref = "refs/tags/0.0.8";
  
  
  inputs."nre".url = "path:../../../n/nre";
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, src-retranslator-0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-retranslator-0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}