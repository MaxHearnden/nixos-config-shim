{
  inputs.config = {
    inputs = {
      latest-system.url = "github:MaxHearnden/latest-system";
      nixos-kexec.url = "github:MaxHearnden/nixos-kexec";
    };
    url = "github:MaxHearnden/nixos-config";
  };

  outputs = { config, self }: {
    inherit (config) packages hydraJobs nixosConfigurations;
  };
}
