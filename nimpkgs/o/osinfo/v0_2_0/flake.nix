{
  description = ''Modules providing information about the OS.'';
  inputs.src-osinfo-v0_2_0.flake = false;
  inputs.src-osinfo-v0_2_0.type = "github";
  inputs.src-osinfo-v0_2_0.owner = "nim-lang";
  inputs.src-osinfo-v0_2_0.repo = "osinfo";
  inputs.src-osinfo-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-osinfo-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osinfo-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osinfo-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}