{
  description = ''Easy specification of text formats for structured data'';
  inputs.src-textformats-v1_1_0.flake = false;
  inputs.src-textformats-v1_1_0.type = "github";
  inputs.src-textformats-v1_1_0.owner = "ggonnella";
  inputs.src-textformats-v1_1_0.repo = "textformats";
  inputs.src-textformats-v1_1_0.ref = "refs/tags/v1.1.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-textformats-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-textformats-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-textformats-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}