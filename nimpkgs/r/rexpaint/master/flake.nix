{
  description = ''REXPaint .xp parser'';
  inputs.src-rexpaint-master.flake = false;
  inputs.src-rexpaint-master.type = "github";
  inputs.src-rexpaint-master.owner = "irskep";
  inputs.src-rexpaint-master.repo = "rexpaint_nim";
  inputs.src-rexpaint-master.ref = "refs/heads/master";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-rexpaint-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rexpaint-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rexpaint-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}