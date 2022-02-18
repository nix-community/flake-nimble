{
  description = ''Get information about colors and convert them in the command line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-clr-v0_1_1.flake = false;
  inputs.src-clr-v0_1_1.type = "github";
  inputs.src-clr-v0_1_1.owner = "Calinou";
  inputs.src-clr-v0_1_1.repo = "clr";
  inputs.src-clr-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-clr-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clr-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clr-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}