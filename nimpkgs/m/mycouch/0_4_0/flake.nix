{
  description = ''a couchDB client written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mycouch-0_4_0.flake = false;
  inputs.src-mycouch-0_4_0.type = "github";
  inputs.src-mycouch-0_4_0.owner = "hamidb80";
  inputs.src-mycouch-0_4_0.repo = "mycouch";
  inputs.src-mycouch-0_4_0.ref = "refs/tags/0.4.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-mycouch-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mycouch-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mycouch-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}