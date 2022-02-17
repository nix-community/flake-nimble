{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';
  inputs.src-gtk2-v1_0.flake = false;
  inputs.src-gtk2-v1_0.type = "github";
  inputs.src-gtk2-v1_0.owner = "nim-lang";
  inputs.src-gtk2-v1_0.repo = "gtk2";
  inputs.src-gtk2-v1_0.ref = "refs/tags/v1.0";
  
  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  outputs = { self, nixpkgs, src-gtk2-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gtk2-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gtk2-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}