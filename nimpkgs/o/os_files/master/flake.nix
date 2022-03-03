{
  description = ''Crossplatform (x11, windows, osx) native file dialogs; sytem file/folder icons in any resolution; open file with default application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-os_files-master.flake = false;
  inputs.src-os_files-master.type = "github";
  inputs.src-os_files-master.owner = "tormund";
  inputs.src-os_files-master.repo = "os_files";
  inputs.src-os_files-master.ref = "refs/heads/master";
  inputs.src-os_files-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."oldgtk3".type = "github";
  # inputs."oldgtk3".owner = "riinr";
  # inputs."oldgtk3".repo = "flake-nimble";
  # inputs."oldgtk3".ref = "flake-pinning";
  # inputs."oldgtk3".dir = "nimpkgs/o/oldgtk3";
  # inputs."oldgtk3".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."oldgtk3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsbind".type = "github";
  # inputs."jsbind".owner = "riinr";
  # inputs."jsbind".repo = "flake-nimble";
  # inputs."jsbind".ref = "flake-pinning";
  # inputs."jsbind".dir = "nimpkgs/j/jsbind";
  # inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/darwin".type = "github";
  # inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  # inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";
  # inputs."https://github.com/yglukhov/darwin".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-os_files-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-os_files-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-os_files-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}