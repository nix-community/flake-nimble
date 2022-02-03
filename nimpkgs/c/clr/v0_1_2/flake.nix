{
  description = ''Get information about colors and convert them in the command line'';
  inputs.src-clr-v0_1_2.flake = false;
  inputs.src-clr-v0_1_2.type = "github";
  inputs.src-clr-v0_1_2.owner = "Calinou";
  inputs.src-clr-v0_1_2.repo = "clr";
  inputs.src-clr-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-clr-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clr-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clr-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}