{
  description = ''faker is a Nim package that generates fake data for you.'';
  inputs.src-faker-v0_11_2.flake = false;
  inputs.src-faker-v0_11_2.type = "github";
  inputs.src-faker-v0_11_2.owner = "jiro4989";
  inputs.src-faker-v0_11_2.repo = "faker";
  inputs.src-faker-v0_11_2.ref = "refs/tags/v0.11.2";
  
  outputs = { self, nixpkgs, src-faker-v0_11_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-v0_11_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-faker-v0_11_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}