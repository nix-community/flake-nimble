{
  description = ''A safe, high-level, optimized OpenGL wrapper'';
  inputs.src-aglet-0_1_0.flake = false;
  inputs.src-aglet-0_1_0.type = "github";
  inputs.src-aglet-0_1_0.owner = "liquid600pgm";
  inputs.src-aglet-0_1_0.repo = "aglet";
  inputs.src-aglet-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";

  outputs = { self, nixpkgs, src-aglet-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aglet-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aglet-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}