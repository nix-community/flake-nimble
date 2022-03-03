{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-foliant-develop.flake = false;
  inputs.src-foliant-develop.type = "github";
  inputs.src-foliant-develop.owner = "foliant-docs";
  inputs.src-foliant-develop.repo = "foliant-nim";
  inputs.src-foliant-develop.ref = "refs/heads/develop";
  inputs.src-foliant-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."yaml".type = "github";
  # inputs."yaml".owner = "riinr";
  # inputs."yaml".repo = "flake-nimble";
  # inputs."yaml".ref = "flake-pinning";
  # inputs."yaml".dir = "nimpkgs/y/yaml";
  # inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-foliant-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foliant-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-foliant-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}