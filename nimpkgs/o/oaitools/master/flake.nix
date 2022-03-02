{
  description = ''A high-level OAI-PMH library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-oaitools-master.flake = false;
  inputs.src-oaitools-master.type = "github";
  inputs.src-oaitools-master.owner = "markpbaggett";
  inputs.src-oaitools-master.repo = "oaitools.nim";
  inputs.src-oaitools-master.ref = "refs/heads/master";
  inputs.src-oaitools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."xmltools".type = "github";
  # inputs."xmltools".owner = "riinr";
  # inputs."xmltools".repo = "flake-nimble";
  # inputs."xmltools".ref = "flake-pinning";
  # inputs."xmltools".dir = "nimpkgs/x/xmltools";
  # inputs."xmltools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."xmltools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-oaitools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oaitools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oaitools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}