{
  description = ''a couchDB client written in Nim'';
  inputs.src-mycouch-0_2.flake = false;
  inputs.src-mycouch-0_2.type = "github";
  inputs.src-mycouch-0_2.owner = "hamidb80";
  inputs.src-mycouch-0_2.repo = "mycouch";
  inputs.src-mycouch-0_2.ref = "refs/tags/0.2";
  
  
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  
  inputs."macroplus".type = "github";
  inputs."macroplus".owner = "riinr";
  inputs."macroplus".repo = "flake-nimble";
  inputs."macroplus".ref = "flake-pinning";
  inputs."macroplus".dir = "nimpkgs/m/macroplus";

  
  inputs."https://github.com/hamidb80/coverage".type = "github";
  inputs."https://github.com/hamidb80/coverage".owner = "riinr";
  inputs."https://github.com/hamidb80/coverage".repo = "flake-nimble";
  inputs."https://github.com/hamidb80/coverage".ref = "flake-pinning";
  inputs."https://github.com/hamidb80/coverage".dir = "nimpkgs/h/https://github.com/hamidb80/coverage";

  outputs = { self, nixpkgs, src-mycouch-0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mycouch-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mycouch-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}