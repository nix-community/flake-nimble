{
  description = ''Modules providing information about the OS.'';
  inputs.src-osinfo-v0_3_1.flake = false;
  inputs.src-osinfo-v0_3_1.type = "github";
  inputs.src-osinfo-v0_3_1.owner = "nim-lang";
  inputs.src-osinfo-v0_3_1.repo = "osinfo";
  inputs.src-osinfo-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-osinfo-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osinfo-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osinfo-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}