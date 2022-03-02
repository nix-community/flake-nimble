{
  description = ''Get information about colors and convert them in the command line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-clr-master.flake = false;
  inputs.src-clr-master.type = "github";
  inputs.src-clr-master.owner = "Calinou";
  inputs.src-clr-master.repo = "clr";
  inputs.src-clr-master.ref = "refs/heads/master";
  inputs.src-clr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-clr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}