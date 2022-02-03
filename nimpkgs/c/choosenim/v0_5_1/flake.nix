{
  description = ''The Nim toolchain installer.'';
  inputs.src-choosenim-v0_5_1.flake = false;
  inputs.src-choosenim-v0_5_1.type = "github";
  inputs.src-choosenim-v0_5_1.owner = "dom96";
  inputs.src-choosenim-v0_5_1.repo = "choosenim";
  inputs.src-choosenim-v0_5_1.ref = "refs/tags/v0.5.1";
  
  
  inputs."nimble".url = "path:../../../n/nimble";
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."nimarchive".url = "path:../../../n/nimarchive";
  inputs."nimarchive".type = "github";
  inputs."nimarchive".owner = "riinr";
  inputs."nimarchive".repo = "flake-nimble";
  inputs."nimarchive".ref = "flake-pinning";
  inputs."nimarchive".dir = "nimpkgs/n/nimarchive";

  
  inputs."libcurl".url = "path:../../../l/libcurl";
  inputs."libcurl".type = "github";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".repo = "flake-nimble";
  inputs."libcurl".ref = "flake-pinning";
  inputs."libcurl".dir = "nimpkgs/l/libcurl";

  
  inputs."analytics".url = "path:../../../a/analytics";
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";

  
  inputs."osinfo".url = "path:../../../o/osinfo";
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  outputs = { self, nixpkgs, src-choosenim-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenim-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}