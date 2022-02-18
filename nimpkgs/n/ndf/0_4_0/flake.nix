{
  description = ''Duplicate files finder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ndf-0_4_0.flake = false;
  inputs.src-ndf-0_4_0.type = "github";
  inputs.src-ndf-0_4_0.owner = "rustomax";
  inputs.src-ndf-0_4_0.repo = "ndf";
  inputs.src-ndf-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."murmurhash".type = "github";
  inputs."murmurhash".owner = "riinr";
  inputs."murmurhash".repo = "flake-nimble";
  inputs."murmurhash".ref = "flake-pinning";
  inputs."murmurhash".dir = "nimpkgs/m/murmurhash";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ndf-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndf-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndf-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}