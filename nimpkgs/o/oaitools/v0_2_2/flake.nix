{
  description = ''A high-level OAI-PMH library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-oaitools-v0_2_2.flake = false;
  inputs.src-oaitools-v0_2_2.type = "github";
  inputs.src-oaitools-v0_2_2.owner = "markpbaggett";
  inputs.src-oaitools-v0_2_2.repo = "oaitools.nim";
  inputs.src-oaitools-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-oaitools-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."xmltools".type = "github";
  # inputs."xmltools".owner = "riinr";
  # inputs."xmltools".repo = "flake-nimble";
  # inputs."xmltools".ref = "flake-pinning";
  # inputs."xmltools".dir = "nimpkgs/x/xmltools";
  # inputs."xmltools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."xmltools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-oaitools-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oaitools-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oaitools-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}