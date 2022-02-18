{
  description = ''Command to add counter suffix/prefix to a list of files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-number_files-v0_2_2.flake = false;
  inputs.src-number_files-v0_2_2.type = "github";
  inputs.src-number_files-v0_2_2.owner = "Araq";
  inputs.src-number_files-v0_2_2.repo = "number_files";
  inputs.src-number_files-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-number_files-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-number_files-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-number_files-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}