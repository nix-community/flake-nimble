{
  description = ''Cross-platform GUI framework'';
  inputs.src-nimx-master.flake = false;
  inputs.src-nimx-master.type = "github";
  inputs.src-nimx-master.owner = "yglukhov";
  inputs.src-nimx-master.repo = "nimx";
  inputs.src-nimx-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."nimsl".type = "github";
  inputs."nimsl".owner = "riinr";
  inputs."nimsl".repo = "flake-nimble";
  inputs."nimsl".ref = "flake-pinning";
  inputs."nimsl".dir = "nimpkgs/n/nimsl";

  
  inputs."jnim".type = "github";
  inputs."jnim".owner = "riinr";
  inputs."jnim".repo = "flake-nimble";
  inputs."jnim".ref = "flake-pinning";
  inputs."jnim".dir = "nimpkgs/j/jnim";

  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."closure_compiler".type = "github";
  inputs."closure_compiler".owner = "riinr";
  inputs."closure_compiler".repo = "flake-nimble";
  inputs."closure_compiler".ref = "flake-pinning";
  inputs."closure_compiler".dir = "nimpkgs/c/closure_compiler";

  
  inputs."plists".type = "github";
  inputs."plists".owner = "riinr";
  inputs."plists".repo = "flake-nimble";
  inputs."plists".ref = "flake-pinning";
  inputs."plists".dir = "nimpkgs/p/plists";

  
  inputs."variant".type = "github";
  inputs."variant".owner = "riinr";
  inputs."variant".repo = "flake-nimble";
  inputs."variant".ref = "flake-pinning";
  inputs."variant".dir = "nimpkgs/v/variant";

  
  inputs."kiwi".type = "github";
  inputs."kiwi".owner = "riinr";
  inputs."kiwi".repo = "flake-nimble";
  inputs."kiwi".ref = "flake-pinning";
  inputs."kiwi".dir = "nimpkgs/k/kiwi";

  
  inputs."https://github.com/yglukhov/ttf".type = "github";
  inputs."https://github.com/yglukhov/ttf".owner = "riinr";
  inputs."https://github.com/yglukhov/ttf".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/ttf".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/ttf".dir = "nimpkgs/h/https://github.com/yglukhov/ttf";

  
  inputs."https://github.com/yglukhov/async_http_request".type = "github";
  inputs."https://github.com/yglukhov/async_http_request".owner = "riinr";
  inputs."https://github.com/yglukhov/async_http_request".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/async_http_request".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/async_http_request".dir = "nimpkgs/h/https://github.com/yglukhov/async_http_request";

  
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  
  inputs."rect_packer".type = "github";
  inputs."rect_packer".owner = "riinr";
  inputs."rect_packer".repo = "flake-nimble";
  inputs."rect_packer".ref = "flake-pinning";
  inputs."rect_packer".dir = "nimpkgs/r/rect_packer";

  
  inputs."https://github.com/yglukhov/android".type = "github";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";

  
  inputs."https://github.com/yglukhov/darwin".type = "github";
  inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";

  
  inputs."os_files".type = "github";
  inputs."os_files".owner = "riinr";
  inputs."os_files".repo = "flake-nimble";
  inputs."os_files".ref = "flake-pinning";
  inputs."os_files".dir = "nimpkgs/o/os_files";

  
  inputs."https://github.com/tormund/nester".type = "github";
  inputs."https://github.com/tormund/nester".owner = "riinr";
  inputs."https://github.com/tormund/nester".repo = "flake-nimble";
  inputs."https://github.com/tormund/nester".ref = "flake-pinning";
  inputs."https://github.com/tormund/nester".dir = "nimpkgs/h/https://github.com/tormund/nester";

  
  inputs."nimwebp".type = "github";
  inputs."nimwebp".owner = "riinr";
  inputs."nimwebp".repo = "flake-nimble";
  inputs."nimwebp".ref = "flake-pinning";
  inputs."nimwebp".dir = "nimpkgs/n/nimwebp";

  outputs = { self, nixpkgs, src-nimx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}