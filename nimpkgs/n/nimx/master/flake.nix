{
  description = ''Cross-platform GUI framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimx-master.flake = false;
  inputs.src-nimx-master.type = "github";
  inputs.src-nimx-master.owner = "yglukhov";
  inputs.src-nimx-master.repo = "nimx";
  inputs.src-nimx-master.ref = "refs/heads/master";
  inputs.src-nimx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sdl2".type = "github";
  # inputs."sdl2".owner = "riinr";
  # inputs."sdl2".repo = "flake-nimble";
  # inputs."sdl2".ref = "flake-pinning";
  # inputs."sdl2".dir = "nimpkgs/s/sdl2";
  # inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimsl".type = "github";
  # inputs."nimsl".owner = "riinr";
  # inputs."nimsl".repo = "flake-nimble";
  # inputs."nimsl".ref = "flake-pinning";
  # inputs."nimsl".dir = "nimpkgs/n/nimsl";
  # inputs."nimsl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jnim".type = "github";
  # inputs."jnim".owner = "riinr";
  # inputs."jnim".repo = "flake-nimble";
  # inputs."jnim".ref = "flake-pinning";
  # inputs."jnim".dir = "nimpkgs/j/jnim";
  # inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."closure_compiler".type = "github";
  # inputs."closure_compiler".owner = "riinr";
  # inputs."closure_compiler".repo = "flake-nimble";
  # inputs."closure_compiler".ref = "flake-pinning";
  # inputs."closure_compiler".dir = "nimpkgs/c/closure_compiler";
  # inputs."closure_compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."closure_compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."plists".type = "github";
  # inputs."plists".owner = "riinr";
  # inputs."plists".repo = "flake-nimble";
  # inputs."plists".ref = "flake-pinning";
  # inputs."plists".dir = "nimpkgs/p/plists";
  # inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."variant".type = "github";
  # inputs."variant".owner = "riinr";
  # inputs."variant".repo = "flake-nimble";
  # inputs."variant".ref = "flake-pinning";
  # inputs."variant".dir = "nimpkgs/v/variant";
  # inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."kiwi".type = "github";
  # inputs."kiwi".owner = "riinr";
  # inputs."kiwi".repo = "flake-nimble";
  # inputs."kiwi".ref = "flake-pinning";
  # inputs."kiwi".dir = "nimpkgs/k/kiwi";
  # inputs."kiwi".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."kiwi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/ttf".type = "github";
  # inputs."https://github.com/yglukhov/ttf".owner = "riinr";
  # inputs."https://github.com/yglukhov/ttf".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/ttf".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/ttf".dir = "nimpkgs/h/https://github.com/yglukhov/ttf";
  # inputs."https://github.com/yglukhov/ttf".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/ttf".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/async_http_request".type = "github";
  # inputs."https://github.com/yglukhov/async_http_request".owner = "riinr";
  # inputs."https://github.com/yglukhov/async_http_request".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/async_http_request".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/async_http_request".dir = "nimpkgs/h/https://github.com/yglukhov/async_http_request";
  # inputs."https://github.com/yglukhov/async_http_request".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/async_http_request".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsbind".type = "github";
  # inputs."jsbind".owner = "riinr";
  # inputs."jsbind".repo = "flake-nimble";
  # inputs."jsbind".ref = "flake-pinning";
  # inputs."jsbind".dir = "nimpkgs/j/jsbind";
  # inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rect_packer".type = "github";
  # inputs."rect_packer".owner = "riinr";
  # inputs."rect_packer".repo = "flake-nimble";
  # inputs."rect_packer".ref = "flake-pinning";
  # inputs."rect_packer".dir = "nimpkgs/r/rect_packer";
  # inputs."rect_packer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rect_packer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/android".type = "github";
  # inputs."https://github.com/yglukhov/android".owner = "riinr";
  # inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";
  # inputs."https://github.com/yglukhov/android".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/darwin".type = "github";
  # inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  # inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";
  # inputs."https://github.com/yglukhov/darwin".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."os_files".type = "github";
  # inputs."os_files".owner = "riinr";
  # inputs."os_files".repo = "flake-nimble";
  # inputs."os_files".ref = "flake-pinning";
  # inputs."os_files".dir = "nimpkgs/o/os_files";
  # inputs."os_files".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."os_files".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/tormund/nester".type = "github";
  # inputs."https://github.com/tormund/nester".owner = "riinr";
  # inputs."https://github.com/tormund/nester".repo = "flake-nimble";
  # inputs."https://github.com/tormund/nester".ref = "flake-pinning";
  # inputs."https://github.com/tormund/nester".dir = "nimpkgs/h/https://github.com/tormund/nester";
  # inputs."https://github.com/tormund/nester".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/tormund/nester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimwebp".type = "github";
  # inputs."nimwebp".owner = "riinr";
  # inputs."nimwebp".repo = "flake-nimble";
  # inputs."nimwebp".ref = "flake-pinning";
  # inputs."nimwebp".dir = "nimpkgs/n/nimwebp";
  # inputs."nimwebp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimwebp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}