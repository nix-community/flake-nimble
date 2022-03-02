{
  description = ''A game engine for rapid development and easy prototyping'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rapid-master.flake = false;
  inputs.src-rapid-master.type = "github";
  inputs.src-rapid-master.owner = "liquid600pgm";
  inputs.src-rapid-master.repo = "rapid";
  inputs.src-rapid-master.ref = "refs/heads/master";
  inputs.src-rapid-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."aglet".type = "github";
  # inputs."aglet".owner = "riinr";
  # inputs."aglet".repo = "flake-nimble";
  # inputs."aglet".ref = "flake-pinning";
  # inputs."aglet".dir = "nimpkgs/a/aglet";
  # inputs."aglet".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."aglet".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stbimage".type = "github";
  # inputs."stbimage".owner = "riinr";
  # inputs."stbimage".repo = "flake-nimble";
  # inputs."stbimage".ref = "flake-pinning";
  # inputs."stbimage".dir = "nimpkgs/s/stbimage";
  # inputs."stbimage".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stbimage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rapid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rapid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rapid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}