{
  description = ''Hi Fidelity Rendering Engine'';
  inputs.src-nimAGG-master.flake = false;
  inputs.src-nimAGG-master.type = "github";
  inputs.src-nimAGG-master.owner = "jangko";
  inputs.src-nimAGG-master.repo = "nimAGG";
  inputs.src-nimAGG-master.ref = "refs/heads/master";
  
  
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";

  
  inputs."nimbmp".type = "github";
  inputs."nimbmp".owner = "riinr";
  inputs."nimbmp".repo = "flake-nimble";
  inputs."nimbmp".ref = "flake-pinning";
  inputs."nimbmp".dir = "nimpkgs/n/nimbmp";

  
  inputs."freetype".type = "github";
  inputs."freetype".owner = "riinr";
  inputs."freetype".repo = "flake-nimble";
  inputs."freetype".ref = "flake-pinning";
  inputs."freetype".dir = "nimpkgs/f/freetype";

  
  inputs."polybool".type = "github";
  inputs."polybool".owner = "riinr";
  inputs."polybool".repo = "flake-nimble";
  inputs."polybool".ref = "flake-pinning";
  inputs."polybool".dir = "nimpkgs/p/polybool";

  outputs = { self, nixpkgs, src-nimAGG-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimAGG-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimAGG-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}