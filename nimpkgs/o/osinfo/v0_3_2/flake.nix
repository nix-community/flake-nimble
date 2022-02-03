{
  description = ''Modules providing information about the OS.'';
  inputs.src-osinfo-v0_3_2.flake = false;
  inputs.src-osinfo-v0_3_2.type = "github";
  inputs.src-osinfo-v0_3_2.owner = "nim-lang";
  inputs.src-osinfo-v0_3_2.repo = "osinfo";
  inputs.src-osinfo-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-osinfo-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osinfo-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osinfo-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}