{
  description = ''micro and elegant web framework'';
  inputs.src-scorper-v1_0_2.flake = false;
  inputs.src-scorper-v1_0_2.type = "github";
  inputs.src-scorper-v1_0_2.owner = "bung87";
  inputs.src-scorper-v1_0_2.repo = "scorper";
  inputs.src-scorper-v1_0_2.ref = "refs/tags/v1.0.2";
  
  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."https://github.com/nortero-code/rx-nim.git".url = "path:../../../h/https://github.com/nortero-code/rx-nim.git";
  inputs."https://github.com/nortero-code/rx-nim.git".type = "github";
  inputs."https://github.com/nortero-code/rx-nim.git".owner = "riinr";
  inputs."https://github.com/nortero-code/rx-nim.git".repo = "flake-nimble";
  inputs."https://github.com/nortero-code/rx-nim.git".ref = "flake-pinning";
  inputs."https://github.com/nortero-code/rx-nim.git".dir = "nimpkgs/h/https://github.com/nortero-code/rx-nim.git";

  
  inputs."zippy".url = "path:../../../z/zippy";
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-scorper-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scorper-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scorper-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}