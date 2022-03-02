{
  description = ''A collection of numerical methods written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-numericalnim-master.flake = false;
  inputs.src-numericalnim-master.type = "github";
  inputs.src-numericalnim-master.owner = "SciNim";
  inputs.src-numericalnim-master.repo = "numericalnim";
  inputs.src-numericalnim-master.ref = "refs/heads/master";
  inputs.src-numericalnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/hugogranstrom/cdt".type = "github";
  # inputs."https://github.com/hugogranstrom/cdt".owner = "riinr";
  # inputs."https://github.com/hugogranstrom/cdt".repo = "flake-nimble";
  # inputs."https://github.com/hugogranstrom/cdt".ref = "flake-pinning";
  # inputs."https://github.com/hugogranstrom/cdt".dir = "nimpkgs/h/https://github.com/hugogranstrom/cdt";
  # inputs."https://github.com/hugogranstrom/cdt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/hugogranstrom/cdt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-numericalnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numericalnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numericalnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}