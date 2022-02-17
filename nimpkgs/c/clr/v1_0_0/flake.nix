{
  description = ''Get information about colors and convert them in the command line'';
  inputs.src-clr-v1_0_0.flake = false;
  inputs.src-clr-v1_0_0.type = "github";
  inputs.src-clr-v1_0_0.owner = "Calinou";
  inputs.src-clr-v1_0_0.repo = "clr";
  inputs.src-clr-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-clr-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clr-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clr-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}