{
  description = ''Web Technologies based Crossplatform GUI Framework'';
  inputs.src-crowngui-v0_2_7.flake = false;
  inputs.src-crowngui-v0_2_7.type = "github";
  inputs.src-crowngui-v0_2_7.owner = "bung87";
  inputs.src-crowngui-v0_2_7.repo = "crowngui";
  inputs.src-crowngui-v0_2_7.ref = "refs/tags/v0.2.7";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."xlsx".url = "path:../../../x/xlsx";
  inputs."xlsx".type = "github";
  inputs."xlsx".owner = "riinr";
  inputs."xlsx".repo = "flake-nimble";
  inputs."xlsx".ref = "flake-pinning";
  inputs."xlsx".dir = "nimpkgs/x/xlsx";

  
  inputs."http://github.com/bung87/static_server".url = "path:../../../h/http://github.com/bung87/static_server";
  inputs."http://github.com/bung87/static_server".type = "github";
  inputs."http://github.com/bung87/static_server".owner = "riinr";
  inputs."http://github.com/bung87/static_server".repo = "flake-nimble";
  inputs."http://github.com/bung87/static_server".ref = "flake-pinning";
  inputs."http://github.com/bung87/static_server".dir = "nimpkgs/h/http://github.com/bung87/static_server";

  
  inputs."jsonschema".url = "path:../../../j/jsonschema";
  inputs."jsonschema".type = "github";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".repo = "flake-nimble";
  inputs."jsonschema".ref = "flake-pinning";
  inputs."jsonschema".dir = "nimpkgs/j/jsonschema";

  outputs = { self, nixpkgs, src-crowngui-v0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crowngui-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crowngui-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}