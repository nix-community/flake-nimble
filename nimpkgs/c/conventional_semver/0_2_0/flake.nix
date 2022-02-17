{
  description = ''Calculate the next semver version given the git log and previous version'';
  inputs.src-conventional_semver-0_2_0.flake = false;
  inputs.src-conventional_semver-0_2_0.type = "gitlab";
  inputs.src-conventional_semver-0_2_0.owner = "SimplyZ";
  inputs.src-conventional_semver-0_2_0.repo = "conventional_semver";
  inputs.src-conventional_semver-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."semver".type = "github";
  inputs."semver".owner = "riinr";
  inputs."semver".repo = "flake-nimble";
  inputs."semver".ref = "flake-pinning";
  inputs."semver".dir = "nimpkgs/s/semver";

  
  inputs."simpleparseopt".type = "github";
  inputs."simpleparseopt".owner = "riinr";
  inputs."simpleparseopt".repo = "flake-nimble";
  inputs."simpleparseopt".ref = "flake-pinning";
  inputs."simpleparseopt".dir = "nimpkgs/s/simpleparseopt";

  outputs = { self, nixpkgs, src-conventional_semver-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-conventional_semver-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-conventional_semver-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}