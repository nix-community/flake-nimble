{
  description = ''Crossplatform (x11, windows, osx) native file dialogs; sytem file/folder icons in any resolution; open file with default application'';
  inputs.src-os_files-master.flake = false;
  inputs.src-os_files-master.type = "github";
  inputs.src-os_files-master.owner = "tormund";
  inputs.src-os_files-master.repo = "os_files";
  inputs.src-os_files-master.ref = "refs/heads/master";
  
  
  inputs."oldgtk3".type = "github";
  inputs."oldgtk3".owner = "riinr";
  inputs."oldgtk3".repo = "flake-nimble";
  inputs."oldgtk3".ref = "flake-pinning";
  inputs."oldgtk3".dir = "nimpkgs/o/oldgtk3";

  
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  
  inputs."https://github.com/yglukhov/darwin".type = "github";
  inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";

  outputs = { self, nixpkgs, src-os_files-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-os_files-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-os_files-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}