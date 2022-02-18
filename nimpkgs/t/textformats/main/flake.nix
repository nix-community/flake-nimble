{
  description = ''Easy specification of text formats for structured data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-textformats-main.flake = false;
  inputs.src-textformats-main.type = "github";
  inputs.src-textformats-main.owner = "ggonnella";
  inputs.src-textformats-main.repo = "textformats";
  inputs.src-textformats-main.ref = "refs/heads/main";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-textformats-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-textformats-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-textformats-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}