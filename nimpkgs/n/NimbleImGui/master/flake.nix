{
  description = ''ImGui Frontend for Nimble'';
  inputs.src-NimbleImGui-master.flake = false;
  inputs.src-NimbleImGui-master.type = "github";
  inputs.src-NimbleImGui-master.owner = "qb-0";
  inputs.src-NimbleImGui-master.repo = "NimbleImGui";
  inputs.src-NimbleImGui-master.ref = "refs/heads/master";
  
  
  inputs."nimgl".url = "path:../../../n/nimgl";
  inputs."nimgl".type = "github";
  inputs."nimgl".owner = "riinr";
  inputs."nimgl".repo = "flake-nimble";
  inputs."nimgl".ref = "flake-pinning";
  inputs."nimgl".dir = "nimpkgs/n/nimgl";

  outputs = { self, nixpkgs, src-NimbleImGui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimbleImGui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NimbleImGui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}