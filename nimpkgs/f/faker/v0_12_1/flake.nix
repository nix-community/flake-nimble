{
  description = ''faker is a Nim package that generates fake data for you.'';
  inputs.src-faker-v0_12_1.flake = false;
  inputs.src-faker-v0_12_1.type = "github";
  inputs.src-faker-v0_12_1.owner = "jiro4989";
  inputs.src-faker-v0_12_1.repo = "faker";
  inputs.src-faker-v0_12_1.ref = "refs/tags/v0.12.1";
  
  outputs = { self, nixpkgs, src-faker-v0_12_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-v0_12_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-faker-v0_12_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}