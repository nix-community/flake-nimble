{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-choosenim-v0_1_0.flake = false;
  inputs.src-choosenim-v0_1_0.type = "github";
  inputs.src-choosenim-v0_1_0.owner = "dom96";
  inputs.src-choosenim-v0_1_0.repo = "choosenim";
  inputs.src-choosenim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."untar".type = "github";
  inputs."untar".owner = "riinr";
  inputs."untar".repo = "flake-nimble";
  inputs."untar".ref = "flake-pinning";
  inputs."untar".dir = "nimpkgs/u/untar";

  
  inputs."libcurl".type = "github";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".repo = "flake-nimble";
  inputs."libcurl".ref = "flake-pinning";
  inputs."libcurl".dir = "nimpkgs/l/libcurl";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenim-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}