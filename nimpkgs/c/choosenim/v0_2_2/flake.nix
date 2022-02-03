{
  description = ''The Nim toolchain installer.'';
  inputs.src-choosenim-v0_2_2.flake = false;
  inputs.src-choosenim-v0_2_2.type = "github";
  inputs.src-choosenim-v0_2_2.owner = "dom96";
  inputs.src-choosenim-v0_2_2.repo = "choosenim";
  inputs.src-choosenim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."nimble".url = "path:../../../n/nimble";
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."untar".url = "path:../../../u/untar";
  inputs."untar".type = "github";
  inputs."untar".owner = "riinr";
  inputs."untar".repo = "flake-nimble";
  inputs."untar".ref = "flake-pinning";
  inputs."untar".dir = "nimpkgs/u/untar";

  
  inputs."libcurl".url = "path:../../../l/libcurl";
  inputs."libcurl".type = "github";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".repo = "flake-nimble";
  inputs."libcurl".ref = "flake-pinning";
  inputs."libcurl".dir = "nimpkgs/l/libcurl";

  outputs = { self, nixpkgs, src-choosenim-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}