{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
  inputs.src-iridium-v0_2_0.flake = false;
  inputs.src-iridium-v0_2_0.type = "github";
  inputs.src-iridium-v0_2_0.owner = "KingDarBoja";
  inputs.src-iridium-v0_2_0.repo = "Iridium";
  inputs.src-iridium-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-iridium-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iridium-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-iridium-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}