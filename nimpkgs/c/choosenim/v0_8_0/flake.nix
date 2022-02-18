{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-choosenim-v0_8_0.flake = false;
  inputs.src-choosenim-v0_8_0.type = "github";
  inputs.src-choosenim-v0_8_0.owner = "dom96";
  inputs.src-choosenim-v0_8_0.repo = "choosenim";
  inputs.src-choosenim-v0_8_0.ref = "refs/tags/v0.8.0";
  
  
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";

  
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  
  inputs."https://github.com/dom96/zippy".type = "github";
  inputs."https://github.com/dom96/zippy".owner = "riinr";
  inputs."https://github.com/dom96/zippy".repo = "flake-nimble";
  inputs."https://github.com/dom96/zippy".ref = "flake-pinning";
  inputs."https://github.com/dom96/zippy".dir = "nimpkgs/h/https://github.com/dom96/zippy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenim-v0_8_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}