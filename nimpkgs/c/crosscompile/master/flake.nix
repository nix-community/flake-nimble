{
  description = ''Crosscompile Nim source code into multiple targets on Linux with this proc.'';
  inputs.src-crosscompile-master.flake = false;
  inputs.src-crosscompile-master.type = "github";
  inputs.src-crosscompile-master.owner = "juancarlospaco";
  inputs.src-crosscompile-master.repo = "nim-crosscompile";
  inputs.src-crosscompile-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-crosscompile-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crosscompile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crosscompile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}