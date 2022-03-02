{
  description = ''Converts ANSI colour codes to HTML span tags with style tags'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ansitohtml-master.flake = false;
  inputs.src-ansitohtml-master.type = "github";
  inputs.src-ansitohtml-master.owner = "PMunch";
  inputs.src-ansitohtml-master.repo = "ansitohtml";
  inputs.src-ansitohtml-master.ref = "refs/heads/master";
  inputs.src-ansitohtml-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ansiparse".type = "github";
  # inputs."ansiparse".owner = "riinr";
  # inputs."ansiparse".repo = "flake-nimble";
  # inputs."ansiparse".ref = "flake-pinning";
  # inputs."ansiparse".dir = "nimpkgs/a/ansiparse";
  # inputs."ansiparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ansiparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ansitohtml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansitohtml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ansitohtml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}